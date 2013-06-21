.class public Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITimeSpinner.java"

# interfaces
.implements Lkankan/wheel/widget/WheelView$OnItemSelectedListener;


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private hoursWheel:Lkankan/wheel/widget/WheelView;

.field private ignoreItemSelection:Z

.field private minutesWheel:Lkankan/wheel/widget/WheelView;

.field private suppressChangeEvent:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 29
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 30
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 0
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 41
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->createNativeView(Landroid/app/Activity;)V

    .line 42
    return-void
.end method

.method private createNativeView(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, formatter:Ljava/text/DecimalFormat;
    new-instance v1, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    const/16 v4, 0x17

    invoke-direct {v1, v6, v4, v0, v5}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    .line 48
    .local v1, hours:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    new-instance v3, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    const/16 v4, 0x3b

    invoke-direct {v3, v6, v4, v0, v5}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    .line 49
    .local v3, minutes:Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    new-instance v4, Lkankan/wheel/widget/WheelView;

    invoke-direct {v4, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    .line 50
    new-instance v4, Lkankan/wheel/widget/WheelView;

    invoke-direct {v4, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    .line 51
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 52
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v5}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v5

    invoke-virtual {v4, v5}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 53
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, v1}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 54
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, v3}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 56
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 57
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 59
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 61
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setNativeView(Landroid/view/View;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onItemSelected(Lkankan/wheel/widget/WheelView;I)V
    .locals 6
    .parameter "view"
    .parameter "index"

    .prologue
    const-string v5, "value"

    .line 127
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 131
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 132
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 133
    .local v1, dateval:Ljava/util/Date;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    invoke-virtual {v2, v5, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    if-nez v2, :cond_0

    .line 135
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 136
    .local v0, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "value"

    invoke-virtual {v0, v5, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "change"

    invoke-virtual {v2, v3, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 6
    .parameter "d"

    .prologue
    const-string v4, "format24"

    const-string v5, "value"

    .line 69
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, valueExistsInProxy:Z
    const-string v2, "value"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const-string v2, "value"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 75
    const/4 v1, 0x1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 80
    .local v0, is24HourFormat:Z
    const-string v2, "format24"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string v2, "format24"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 85
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setValue(JZ)V

    .line 87
    if-nez v1, :cond_2

    .line 88
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_2
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 4
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 97
    const-string v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    move-object v0, p3

    check-cast v0, Ljava/util/Date;

    move-object v1, v0

    .line 99
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setValue(J)V

    .line 103
    .end local v1           #date:Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 104
    return-void

    .line 100
    :cond_1
    const-string v2, "format24"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public setValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setValue(JZ)V

    .line 109
    return-void
.end method

.method public setValue(JZ)V
    .locals 4
    .parameter "value"
    .parameter "suppressEvent"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 113
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 115
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 116
    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    .line 117
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 118
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 119
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    .line 120
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 121
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 122
    return-void
.end method
