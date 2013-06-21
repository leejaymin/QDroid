.class public Lti/modules/titanium/ui/android/AndroidModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "AndroidModuleBindingGen.java"


# static fields
.field private static final CHILD_MODULE_OptionMenu:Ljava/lang/String; = "OptionMenu"

.field private static final CONST_LINKIFY_ALL:Ljava/lang/String; = "LINKIFY_ALL"

.field private static final CONST_LINKIFY_EMAIL_ADDRESSES:Ljava/lang/String; = "LINKIFY_EMAIL_ADDRESSES"

.field private static final CONST_LINKIFY_MAP_ADDRESSES:Ljava/lang/String; = "LINKIFY_MAP_ADDRESSES"

.field private static final CONST_LINKIFY_PHONE_NUMBERS:Ljava/lang/String; = "LINKIFY_PHONE_NUMBERS"

.field private static final CONST_LINKIFY_WEB_URLS:Ljava/lang/String; = "LINKIFY_WEB_URLS"

.field private static final CONST_SOFT_INPUT_ADJUST_PAN:Ljava/lang/String; = "SOFT_INPUT_ADJUST_PAN"

.field private static final CONST_SOFT_INPUT_ADJUST_RESIZE:Ljava/lang/String; = "SOFT_INPUT_ADJUST_RESIZE"

.field private static final CONST_SOFT_INPUT_ADJUST_UNSPECIFIED:Ljava/lang/String; = "SOFT_INPUT_ADJUST_UNSPECIFIED"

.field private static final CONST_SOFT_INPUT_STATE_ALWAYS_HIDDEN:Ljava/lang/String; = "SOFT_INPUT_STATE_ALWAYS_HIDDEN"

.field private static final CONST_SOFT_INPUT_STATE_ALWAYS_VISIBLE:Ljava/lang/String; = "SOFT_INPUT_STATE_ALWAYS_VISIBLE"

.field private static final CONST_SOFT_INPUT_STATE_HIDDEN:Ljava/lang/String; = "SOFT_INPUT_STATE_HIDDEN"

.field private static final CONST_SOFT_INPUT_STATE_UNSPECIFIED:Ljava/lang/String; = "SOFT_INPUT_STATE_UNSPECIFIED"

.field private static final CONST_SOFT_INPUT_STATE_VISIBLE:Ljava/lang/String; = "SOFT_INPUT_STATE_VISIBLE"

.field private static final CONST_SOFT_KEYBOARD_DEFAULT_ON_FOCUS:Ljava/lang/String; = "SOFT_KEYBOARD_DEFAULT_ON_FOCUS"

.field private static final CONST_SOFT_KEYBOARD_HIDE_ON_FOCUS:Ljava/lang/String; = "SOFT_KEYBOARD_HIDE_ON_FOCUS"

.field private static final CONST_SOFT_KEYBOARD_SHOW_ON_FOCUS:Ljava/lang/String; = "SOFT_KEYBOARD_SHOW_ON_FOCUS"

.field private static final CONST_SWITCH_STYLE_CHECKBOX:Ljava/lang/String; = "SWITCH_STYLE_CHECKBOX"

.field private static final CONST_SWITCH_STYLE_TOGGLEBUTTON:Ljava/lang/String; = "SWITCH_STYLE_TOGGLEBUTTON"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.Android"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.android.AndroidModule"

.field private static final METHOD_hideSoftKeyboard:Ljava/lang/String; = "hideSoftKeyboard"

.field private static final METHOD_openPreferences:Ljava/lang/String; = "openPreferences"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "AndroidModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_KEYBOARD_SHOW_ON_FOCUS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_KEYBOARD_DEFAULT_ON_FOCUS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_INPUT_STATE_HIDDEN"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_INPUT_ADJUST_RESIZE"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_INPUT_STATE_UNSPECIFIED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_INPUT_ADJUST_UNSPECIFIED"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_INPUT_STATE_ALWAYS_HIDDEN"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SWITCH_STYLE_TOGGLEBUTTON"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "LINKIFY_ALL"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SWITCH_STYLE_CHECKBOX"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_INPUT_STATE_ALWAYS_VISIBLE"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_INPUT_ADJUST_PAN"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_INPUT_STATE_VISIBLE"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "SOFT_KEYBOARD_HIDE_ON_FOCUS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "LINKIFY_WEB_URLS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "LINKIFY_EMAIL_ADDRESSES"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "LINKIFY_PHONE_NUMBERS"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "LINKIFY_MAP_ADDRESSES"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "OptionMenu"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "openPreferences"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hideSoftKeyboard"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 92
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "UI.Android"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "name"

    .prologue
    const-string v8, "OptionMenu"

    const-string v7, "openPreferences"

    const-string v6, "hideSoftKeyboard"

    .line 96
    iget-object v4, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 97
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 169
    :goto_0
    return-object v4

    .line 103
    :cond_0
    const-string v4, "OptionMenu"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    new-instance v0, Lti/modules/titanium/ui/android/optionmenu/OptionMenuModule;

    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v4

    invoke-direct {v0, v4}, Lti/modules/titanium/ui/android/optionmenu/OptionMenuModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 105
    .local v0, OptionMenu_module:Lorg/appcelerator/kroll/KrollModule;
    iget-object v4, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "OptionMenu"

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 106
    goto :goto_0

    .line 113
    .end local v0           #OptionMenu_module:Lorg/appcelerator/kroll/KrollModule;
    :cond_1
    const-string v4, "openPreferences"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    new-instance v2, Lti/modules/titanium/ui/android/AndroidModuleBindingGen$1;

    const-string v4, "openPreferences"

    invoke-direct {v2, p0, v7}, Lti/modules/titanium/ui/android/AndroidModuleBindingGen$1;-><init>(Lti/modules/titanium/ui/android/AndroidModuleBindingGen;Ljava/lang/String;)V

    .line 144
    .local v2, openPreferences_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "openPreferences"

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 145
    goto :goto_0

    .line 148
    .end local v2           #openPreferences_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v4, "hideSoftKeyboard"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    new-instance v1, Lti/modules/titanium/ui/android/AndroidModuleBindingGen$2;

    const-string v4, "hideSoftKeyboard"

    invoke-direct {v1, p0, v6}, Lti/modules/titanium/ui/android/AndroidModuleBindingGen$2;-><init>(Lti/modules/titanium/ui/android/AndroidModuleBindingGen;Ljava/lang/String;)V

    .line 164
    .local v1, hideSoftKeyboard_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/ui/android/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "hideSoftKeyboard"

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    .line 165
    goto :goto_0

    .line 169
    .end local v1           #hideSoftKeyboard_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "ti.modules.titanium.ui.android.AndroidModule"

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
    .line 193
    const-class v0, Lti/modules/titanium/ui/android/AndroidModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "Android"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 189
    new-instance v0, Lti/modules/titanium/ui/android/AndroidModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/ui/android/AndroidModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
