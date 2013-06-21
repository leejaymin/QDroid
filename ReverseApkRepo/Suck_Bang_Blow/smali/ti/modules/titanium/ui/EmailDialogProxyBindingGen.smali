.class public Lti/modules/titanium/ui/EmailDialogProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "EmailDialogProxyBindingGen.java"


# static fields
.field private static final ACCESSOR_bccRecipients:Ljava/lang/String; = "bccRecipients"

.field private static final ACCESSOR_ccRecipients:Ljava/lang/String; = "ccRecipients"

.field private static final ACCESSOR_html:Ljava/lang/String; = "html"

.field private static final ACCESSOR_messageBody:Ljava/lang/String; = "messageBody"

.field private static final ACCESSOR_subject:Ljava/lang/String; = "subject"

.field private static final ACCESSOR_toRecipients:Ljava/lang/String; = "toRecipients"

.field private static final CONST_CANCELLED:Ljava/lang/String; = "CANCELLED"

.field private static final CONST_FAILED:Ljava/lang/String; = "FAILED"

.field private static final CONST_SAVED:Ljava/lang/String; = "SAVED"

.field private static final CONST_SENT:Ljava/lang/String; = "SENT"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.EmailDialog"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.EmailDialogProxy"

.field private static final METHOD_addAttachment:Ljava/lang/String; = "addAttachment"

.field private static final METHOD_isSupported:Ljava/lang/String; = "isSupported"

.field private static final METHOD_open:Ljava/lang/String; = "open"

.field private static final PROP_GET_bccRecipients:Ljava/lang/String; = "getBccRecipients"

.field private static final PROP_GET_ccRecipients:Ljava/lang/String; = "getCcRecipients"

.field private static final PROP_GET_html:Ljava/lang/String; = "getHtml"

.field private static final PROP_GET_messageBody:Ljava/lang/String; = "getMessageBody"

.field private static final PROP_GET_subject:Ljava/lang/String; = "getSubject"

.field private static final PROP_GET_toRecipients:Ljava/lang/String; = "getToRecipients"

.field private static final PROP_SET_bccRecipients:Ljava/lang/String; = "setBccRecipients"

.field private static final PROP_SET_ccRecipients:Ljava/lang/String; = "setCcRecipients"

.field private static final PROP_SET_html:Ljava/lang/String; = "setHtml"

.field private static final PROP_SET_messageBody:Ljava/lang/String; = "setMessageBody"

.field private static final PROP_SET_subject:Ljava/lang/String; = "setSubject"

.field private static final PROP_SET_toRecipients:Ljava/lang/String; = "setToRecipients"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "EmailDialog"

.field private static final TAG:Ljava/lang/String; = "EmailDialogProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "CANCELLED"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SENT"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SAVED"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isSupported"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "open"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "addAttachment"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getBccRecipients"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setBccRecipients"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCcRecipients"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setCcRecipients"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getHtml"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setHtml"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getMessageBody"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setMessageBody"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSubject"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setSubject"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getToRecipients"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setToRecipients"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 94
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, "UI.EmailDialog"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .parameter "name"

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 99
    .local v18, value:Ljava/lang/Object;
    if-eqz v18, :cond_0

    move-object/from16 v19, v18

    .line 230
    :goto_0
    return-object v19

    .line 109
    :cond_0
    const-string v19, "isSupported"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 110
    new-instance v10, Lti/modules/titanium/ui/EmailDialogProxyBindingGen$1;

    const-string v19, "isSupported"

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/EmailDialogProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/EmailDialogProxyBindingGen;Ljava/lang/String;)V

    .line 125
    .local v10, isSupported_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "isSupported"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v10

    .line 126
    goto :goto_0

    .line 129
    .end local v10           #isSupported_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v19, "open"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 130
    new-instance v13, Lti/modules/titanium/ui/EmailDialogProxyBindingGen$2;

    const-string v19, "open"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/EmailDialogProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/EmailDialogProxyBindingGen;Ljava/lang/String;)V

    .line 143
    .local v13, open_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "open"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v13

    .line 144
    goto :goto_0

    .line 147
    .end local v13           #open_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v19, "addAttachment"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 148
    new-instance v3, Lti/modules/titanium/ui/EmailDialogProxyBindingGen$3;

    const-string v19, "addAttachment"

    move-object v0, v3

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/EmailDialogProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/EmailDialogProxyBindingGen;Ljava/lang/String;)V

    .line 171
    .local v3, addAttachment_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "addAttachment"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v3

    .line 172
    goto/16 :goto_0

    .line 175
    .end local v3           #addAttachment_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v19, "setBccRecipients"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 176
    const-string v19, "bccRecipients"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v5

    .line 177
    .local v5, bccRecipients_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setBccRecipients"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v5

    .line 178
    goto/16 :goto_0

    .line 179
    .end local v5           #bccRecipients_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v19, "getBccRecipients"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 180
    const-string v19, "bccRecipients"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v4

    .line 181
    .local v4, bccRecipients_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "getBccRecipients"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v4

    .line 182
    goto/16 :goto_0

    .line 184
    .end local v4           #bccRecipients_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v19, "setCcRecipients"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 185
    const-string v19, "ccRecipients"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v7

    .line 186
    .local v7, ccRecipients_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setCcRecipients"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v7

    .line 187
    goto/16 :goto_0

    .line 188
    .end local v7           #ccRecipients_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v19, "getCcRecipients"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 189
    const-string v19, "ccRecipients"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v6

    .line 190
    .local v6, ccRecipients_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "getCcRecipients"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v6

    .line 191
    goto/16 :goto_0

    .line 193
    .end local v6           #ccRecipients_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v19, "setHtml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 194
    const-string v19, "html"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v9

    .line 195
    .local v9, html_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setHtml"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v9

    .line 196
    goto/16 :goto_0

    .line 197
    .end local v9           #html_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v19, "getHtml"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 198
    const-string v19, "html"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v8

    .line 199
    .local v8, html_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "getHtml"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v8

    .line 200
    goto/16 :goto_0

    .line 202
    .end local v8           #html_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v19, "setMessageBody"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 203
    const-string v19, "messageBody"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v12

    .line 204
    .local v12, messageBody_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setMessageBody"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v12

    .line 205
    goto/16 :goto_0

    .line 206
    .end local v12           #messageBody_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v19, "getMessageBody"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 207
    const-string v19, "messageBody"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v11

    .line 208
    .local v11, messageBody_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "getMessageBody"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v11

    .line 209
    goto/16 :goto_0

    .line 211
    .end local v11           #messageBody_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v19, "setSubject"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 212
    const-string v19, "subject"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v15

    .line 213
    .local v15, subject_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setSubject"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v15

    .line 214
    goto/16 :goto_0

    .line 215
    .end local v15           #subject_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v19, "getSubject"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 216
    const-string v19, "subject"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v14

    .line 217
    .local v14, subject_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "getSubject"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v14

    .line 218
    goto/16 :goto_0

    .line 220
    .end local v14           #subject_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v19, "setToRecipients"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 221
    const-string v19, "toRecipients"

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v17

    .line 222
    .local v17, toRecipients_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "setToRecipients"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v17

    .line 223
    goto/16 :goto_0

    .line 224
    .end local v17           #toRecipients_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v19, "getToRecipients"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 225
    const-string v19, "toRecipients"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v16

    .line 226
    .local v16, toRecipients_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/EmailDialogProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "getToRecipients"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v16

    .line 227
    goto/16 :goto_0

    .line 230
    .end local v16           #toRecipients_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "ti.modules.titanium.ui.EmailDialogProxy"

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
    .line 254
    const-class v0, Lti/modules/titanium/ui/EmailDialogProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "EmailDialog"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method
