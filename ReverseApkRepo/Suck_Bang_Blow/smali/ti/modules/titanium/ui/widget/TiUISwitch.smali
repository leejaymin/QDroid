.class public Lti/modules/titanium/ui/widget/TiUISwitch;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUISwitch"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiUISwitch;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    const-string v2, "style"

    .line 32
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 33
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiUISwitch;->DBG:Z

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "TiUISwitch"

    const-string v1, "Creating a switch"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    const-string v0, "style"

    const/4 v0, 0x0

    const-string v1, "style"

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1, p1}, Lti/modules/titanium/ui/widget/TiUISwitch;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "btn"
    .parameter "value"

    .prologue
    const-string v3, "value"

    .line 116
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 117
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "change"

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 121
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "d"

    .prologue
    const-string v1, "style"

    .line 43
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 45
    const-string v0, "style"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "style"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->setStyle(I)V

    .line 48
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    const/4 v4, 0x0

    const-class v5, Landroid/widget/ToggleButton;

    .line 84
    sget-boolean v1, Lti/modules/titanium/ui/widget/TiUISwitch;->DBG:Z

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "TiUISwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISwitch;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 89
    .local v0, cb:Landroid/widget/CompoundButton;
    const-string v1, "style"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 90
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUISwitch;->setStyle(I)V

    .line 112
    .end local v0           #cb:Landroid/widget/CompoundButton;
    .end local p3
    :goto_0
    return-void

    .line 91
    .restart local v0       #cb:Landroid/widget/CompoundButton;
    .restart local p3
    :cond_1
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    .restart local p3
    :cond_2
    const-string v1, "titleOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    check-cast v0, Landroid/widget/ToggleButton;

    .end local v0           #cb:Landroid/widget/CompoundButton;
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    .restart local v0       #cb:Landroid/widget/CompoundButton;
    .restart local p3
    :cond_3
    const-string v1, "titleOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    check-cast v0, Landroid/widget/ToggleButton;

    .end local v0           #cb:Landroid/widget/CompoundButton;
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    .restart local v0       #cb:Landroid/widget/CompoundButton;
    .restart local p3
    :cond_4
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 99
    :cond_5
    const-string v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setTextColor(I)V

    goto :goto_0

    .line 101
    :cond_6
    const-string v1, "font"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 102
    check-cast p3, Lorg/appcelerator/kroll/KrollDict;

    .end local p3
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    goto/16 :goto_0

    .line 103
    .restart local p3
    :cond_7
    const-string v1, "textAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->requestLayout()V

    goto/16 :goto_0

    .line 106
    :cond_8
    const-string v1, "verticalAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 107
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->requestLayout()V

    goto/16 :goto_0

    .line 110
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method protected setStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    .line 124
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISwitch;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    .line 125
    .local v1, currentButton:Landroid/widget/CompoundButton;
    const/4 v0, 0x0

    .line 127
    .local v0, button:Landroid/widget/CompoundButton;
    packed-switch p1, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-nez v2, :cond_1

    .line 130
    new-instance v0, Landroid/widget/CheckBox;

    .end local v0           #button:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 144
    .restart local v0       #button:Landroid/widget/CompoundButton;
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->setNativeView(Landroid/view/View;)V

    .line 146
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lti/modules/titanium/ui/widget/TiUISwitch;->updateButton(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V

    .line 147
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 135
    :pswitch_1
    instance-of v2, v1, Landroid/widget/ToggleButton;

    if-nez v2, :cond_1

    .line 136
    new-instance v0, Landroid/widget/ToggleButton;

    .end local v0           #button:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .restart local v0       #button:Landroid/widget/CompoundButton;
    goto :goto_1

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected updateButton(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .parameter "cb"
    .parameter "d"

    .prologue
    const/4 v5, 0x0

    const-string v9, "title"

    const-string v8, "textAlign"

    const-string v7, "font"

    const-string v6, "color"

    .line 51
    const-string v3, "title"

    invoke-virtual {p2, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string v3, "title"

    invoke-static {p2, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    const-string v3, "titleOff"

    invoke-virtual {p2, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    move-object v3, v0

    const-string v4, "titleOff"

    invoke-static {p2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    const-string v3, "titleOn"

    invoke-virtual {p2, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/widget/ToggleButton;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    move-object v3, v0

    const-string v4, "titleOn"

    invoke-static {p2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 60
    :cond_2
    const-string v3, "value"

    invoke-virtual {p2, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    const-string v3, "value"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 63
    :cond_3
    const-string v3, "color"

    invoke-virtual {p2, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    const-string v3, "color"

    invoke-static {p2, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 66
    :cond_4
    const-string v3, "font"

    invoke-virtual {p2, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 67
    const-string v3, "font"

    invoke-virtual {p2, v7}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Lorg/appcelerator/kroll/KrollDict;)V

    .line 69
    :cond_5
    const-string v3, "textAlign"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 70
    const-string v3, "textAlign"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, textAlign:Ljava/lang/String;
    invoke-static {p1, v1, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v1           #textAlign:Ljava/lang/String;
    :cond_6
    const-string v3, "verticalAlign"

    invoke-virtual {p2, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 74
    const-string v3, "verticalAlign"

    invoke-virtual {p2, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, verticalAlign:Ljava/lang/String;
    invoke-static {p1, v5, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v2           #verticalAlign:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    .line 78
    return-void
.end method
