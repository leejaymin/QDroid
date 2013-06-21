.class public Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUIDatePicker"


# instance fields
.field protected maxDate:Ljava/util/Date;

.field protected minDate:Ljava/util/Date;

.field protected minuteInterval:I

.field private suppressChangeEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 3
    .parameter "proxy"
    .parameter "activity"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 40
    sget-boolean v1, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->DBG:Z

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "TiUIDatePicker"

    const-string v2, "Creating a date picker"

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    new-instance v0, Landroid/widget/DatePicker;

    invoke-direct {v0, p2}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, picker:Landroid/widget/DatePicker;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setNativeView(Landroid/view/View;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 6
    .parameter "picker"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v4, 0x1

    const-string v5, "value"

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 108
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 110
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 112
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 114
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v4}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 116
    :cond_1
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    if-nez v2, :cond_2

    .line 117
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 118
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "change"

    invoke-virtual {v2, v3, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 121
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .parameter "d"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const-string v9, "minDate"

    const-string v6, "maxDate"

    const-string v7, "value"

    .line 50
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 52
    const/4 v3, 0x0

    .line 54
    .local v3, valueExistsInProxy:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 56
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    .line 57
    .local v2, picker:Landroid/widget/DatePicker;
    const-string v4, "value"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    const-string v4, "value"

    invoke-virtual {p1, v7}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 59
    const/4 v3, 0x1

    .line 61
    :cond_0
    const-string v4, "minDate"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    const-string v4, "minDate"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    iput-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    .line 64
    :cond_1
    const-string v4, "maxDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    const-string v4, "maxDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    iput-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    .line 67
    :cond_2
    const-string v4, "minuteInterval"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    const-string v4, "minuteInterval"

    invoke-virtual {p1, v4}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    .local v1, mi:I
    if-lt v1, v5, :cond_3

    const/16 v4, 0x1e

    if-gt v1, v4, :cond_3

    rem-int/lit8 v4, v1, 0x3c

    if-nez v4, :cond_3

    .line 70
    iput v1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minuteInterval:I

    .line 73
    .end local v1           #mi:I
    :cond_3
    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 74
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 76
    const/4 v4, 0x0

    iput-boolean v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 78
    if-nez v3, :cond_4

    .line 79
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    :cond_4
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    if-eqz v4, :cond_5

    .line 84
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gtz v4, :cond_5

    .line 85
    const-string v4, "TiUIDatePicker"

    const-string v5, "maxDate is less or equal minDate, ignoring both settings."

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object v8, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    .line 87
    iput-object v8, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    .line 90
    :cond_5
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 4
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"
    .parameter "proxy"

    .prologue
    .line 96
    const-string v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    move-object v0, p3

    check-cast v0, Ljava/util/Date;

    move-object v1, v0

    .line 99
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(J)V

    .line 101
    .end local v1           #date:Ljava/util/Date;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 102
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .parameter "value"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 127
    return-void
.end method

.method public setValue(JZ)V
    .locals 5
    .parameter "value"
    .parameter "suppressEvent"

    .prologue
    .line 131
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 132
    .local v1, picker:Landroid/widget/DatePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 133
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 134
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 137
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 138
    return-void
.end method
