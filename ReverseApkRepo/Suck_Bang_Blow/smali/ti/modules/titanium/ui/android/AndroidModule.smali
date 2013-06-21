.class public Lti/modules/titanium/ui/android/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "UIAndroidModule"

.field public static final LINKIFY_ALL:I = 0xf

.field public static final LINKIFY_EMAIL_ADDRESSES:I = 0x2

.field public static final LINKIFY_MAP_ADDRESSES:I = 0x8

.field public static final LINKIFY_PHONE_NUMBERS:I = 0x4

.field public static final LINKIFY_WEB_URLS:I = 0x1

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SOFT_KEYBOARD_DEFAULT_ON_FOCUS:I = 0x0

.field public static final SOFT_KEYBOARD_HIDE_ON_FOCUS:I = 0x1

.field public static final SOFT_KEYBOARD_SHOW_ON_FOCUS:I = 0x2

.field public static final SWITCH_STYLE_CHECKBOX:I = 0x0

.field public static final SWITCH_STYLE_TOGGLEBUTTON:I = 0x1


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 54
    return-void
.end method


# virtual methods
.method public hideSoftKeyboard(Lorg/appcelerator/kroll/KrollInvocation;)V
    .locals 3
    .parameter "invocation"

    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->showSoftKeyboard(Landroid/view/View;Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public openPreferences(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)V
    .locals 4
    .parameter "kroll"
    .end parameter
    .parameter "prefsName"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lti/modules/titanium/ui/android/TiPreferencesActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, i:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 64
    const-string v2, "prefsName"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 70
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v2, "UIAndroidModule"

    const-string v3, "Unable to open preferences. Activity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
