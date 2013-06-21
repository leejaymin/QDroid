.class public Lti/modules/titanium/ui/UIModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "UIModule.java"


# static fields
.field public static final FACE_DOWN:I = 0x6

.field public static final FACE_UP:I = 0x5

.field public static final INPUT_BORDERSTYLE_BEZEL:I = 0x2

.field public static final INPUT_BORDERSTYLE_LINE:I = 0x3

.field public static final INPUT_BORDERSTYLE_NONE:I = 0x0

.field public static final INPUT_BORDERSTYLE_ROUNDED:I = 0x1

.field public static final INPUT_BUTTONMODE_ALWAYS:I = 0x1

.field public static final INPUT_BUTTONMODE_NEVER:I = 0x2

.field public static final INPUT_BUTTONMODE_ONFOCUS:I = 0x0

.field public static final KEYBOARD_APPEARANCE_ALERT:I = -0x1

.field public static final KEYBOARD_APPEARANCE_DEFAULT:I = -0x1

.field public static final KEYBOARD_ASCII:I = 0x0

.field public static final KEYBOARD_DECIMAL_PAD:I = 0x8

.field public static final KEYBOARD_DEFAULT:I = 0x7

.field public static final KEYBOARD_EMAIL:I = 0x5

.field public static final KEYBOARD_NAMEPHONE_PAD:I = 0x6

.field public static final KEYBOARD_NUMBERS_PUNCTUATION:I = 0x1

.field public static final KEYBOARD_NUMBER_PAD:I = 0x3

.field public static final KEYBOARD_PHONE_PAD:I = 0x4

.field public static final KEYBOARD_URL:I = 0x2

.field public static final LANDSCAPE_LEFT:I = 0x3

.field public static final LANDSCAPE_RIGHT:I = 0x4

.field private static final LCAT:Ljava/lang/String; = "TiUIModule"

.field public static final MAP_VIEW_HYBRID:I = 0x3

.field public static final MAP_VIEW_SATELLITE:I = 0x2

.field public static final MAP_VIEW_STANDARD:I = 0x1

.field public static final NOTIFICATION_DURATION_LONG:I = 0x1

.field public static final NOTIFICATION_DURATION_SHORT:I = 0x0

.field public static final PICKER_TYPE_COUNT_DOWN_TIMER:I = 0x3

.field public static final PICKER_TYPE_DATE:I = 0x1

.field public static final PICKER_TYPE_DATE_AND_TIME:I = 0x2

.field public static final PICKER_TYPE_PLAIN:I = -0x1

.field public static final PICKER_TYPE_TIME:I = 0x0

.field public static final PORTRAIT:I = 0x1

.field public static final RETURNKEY_DEFAULT:I = 0x9

.field public static final RETURNKEY_DONE:I = 0x7

.field public static final RETURNKEY_EMERGENCY_CALL:I = 0x8

.field public static final RETURNKEY_GO:I = 0x0

.field public static final RETURNKEY_GOOGLE:I = 0x1

.field public static final RETURNKEY_JOIN:I = 0x2

.field public static final RETURNKEY_NEXT:I = 0x3

.field public static final RETURNKEY_ROUTE:I = 0x4

.field public static final RETURNKEY_SEARCH:I = 0x5

.field public static final RETURNKEY_SEND:I = 0xa

.field public static final RETURNKEY_YAHOO:I = 0x6

.field public static final TABLEVIEW_POSITION_ANY:I = 0x0

.field public static final TABLEVIEW_POSITION_BOTTOM:I = 0x3

.field public static final TABLEVIEW_POSITION_MIDDLE:I = 0x2

.field public static final TABLEVIEW_POSITION_TOP:I = 0x1

.field public static final TEXT_ALIGNMENT_CENTER:Ljava/lang/String; = "center"

.field public static final TEXT_ALIGNMENT_LEFT:Ljava/lang/String; = "left"

.field public static final TEXT_ALIGNMENT_RIGHT:Ljava/lang/String; = "right"

.field public static final TEXT_AUTOCAPITALIZATION_ALL:I = 0x3

.field public static final TEXT_AUTOCAPITALIZATION_NONE:I = 0x0

.field public static final TEXT_AUTOCAPITALIZATION_SENTENCES:I = 0x1

.field public static final TEXT_AUTOCAPITALIZATION_WORDS:I = 0x2

.field public static final TEXT_VERTICAL_ALIGNMENT_BOTTOM:Ljava/lang/String; = "bottom"

.field public static final TEXT_VERTICAL_ALIGNMENT_CENTER:Ljava/lang/String; = "middle"

.field public static final TEXT_VERTICAL_ALIGNMENT_TOP:Ljava/lang/String; = "top"

.field public static final UNKNOWN:I = 0x7

.field public static final UPSIDE_PORTRAIT:I = 0x2


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 105
    return-void
.end method


# virtual methods
.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .parameter "color"

    .prologue
    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/UIModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 111
    .local v0, w:Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/Object;)V
    .locals 7
    .parameter "image"

    .prologue
    .line 118
    invoke-virtual {p0}, Lti/modules/titanium/ui/UIModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 119
    .local v4, w:Landroid/view/Window;
    if-eqz v4, :cond_0

    .line 120
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_1

    .line 122
    :try_start_0
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 124
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "TiUIModule"

    const-string v6, "Unable to set background drawable for root window.  An integer id was provided but no such drawable resource exists."

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/UIModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiRootActivity;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 129
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    invoke-static {v0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Lorg/appcelerator/titanium/TiContext;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v2

    .line 130
    .local v2, drawableRef:Lorg/appcelerator/titanium/view/TiDrawableReference;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 131
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v4, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOrientation(Lorg/appcelerator/kroll/KrollInvocation;I)V
    .locals 4
    .parameter "invocation"
    .parameter "orientation"

    .prologue
    .line 139
    const/4 v1, -0x1

    .line 140
    .local v1, requestedOrientation:I
    packed-switch p2, :pswitch_data_0

    .line 151
    :goto_0
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 152
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 153
    instance-of v2, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v2, :cond_1

    .line 154
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiBaseActivity;->overrideOrientation(I)V

    .line 160
    :cond_0
    :goto_1
    const-string v2, "orientation"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/UIModule;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    return-void

    .line 143
    :pswitch_0
    const/4 v1, 0x0

    .line 144
    goto :goto_0

    .line 147
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 156
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
