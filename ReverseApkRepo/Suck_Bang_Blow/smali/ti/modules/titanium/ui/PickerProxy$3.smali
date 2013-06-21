.class Lti/modules/titanium/ui/PickerProxy$3;
.super Ljava/lang/Object;
.source "PickerProxy.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/PickerProxy;->showTimePickerDialog(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/PickerProxy;

.field final synthetic val$callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field final synthetic val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/PickerProxy;Lorg/appcelerator/titanium/kroll/KrollCallback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lti/modules/titanium/ui/PickerProxy$3;->this$0:Lti/modules/titanium/ui/PickerProxy;

    iput-object p2, p0, Lti/modules/titanium/ui/PickerProxy$3;->val$callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iput-object p3, p0, Lti/modules/titanium/ui/PickerProxy$3;->val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .parameter "field"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v5, 0x0

    .line 599
    iget-object v3, p0, Lti/modules/titanium/ui/PickerProxy$3;->val$callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v3, :cond_0

    .line 600
    iget-object v3, p0, Lti/modules/titanium/ui/PickerProxy$3;->val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 601
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 602
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 603
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 604
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 605
    .local v2, value:Ljava/util/Date;
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 606
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "cancel"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v3, p0, Lti/modules/titanium/ui/PickerProxy$3;->val$callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync([Ljava/lang/Object;)V

    .line 610
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v2           #value:Ljava/util/Date;
    :cond_0
    return-void
.end method
