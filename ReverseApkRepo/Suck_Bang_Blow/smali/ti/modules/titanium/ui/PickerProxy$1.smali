.class Lti/modules/titanium/ui/PickerProxy$1;
.super Ljava/lang/Object;
.source "PickerProxy.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/PickerProxy;->showDatePickerDialog(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)V
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
    .line 508
    iput-object p1, p0, Lti/modules/titanium/ui/PickerProxy$1;->this$0:Lti/modules/titanium/ui/PickerProxy;

    iput-object p2, p0, Lti/modules/titanium/ui/PickerProxy$1;->val$callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iput-object p3, p0, Lti/modules/titanium/ui/PickerProxy$1;->val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7
    .parameter "picker"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 512
    iget-object v3, p0, Lti/modules/titanium/ui/PickerProxy$1;->val$callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-eqz v3, :cond_0

    .line 513
    iget-object v3, p0, Lti/modules/titanium/ui/PickerProxy$1;->val$callbackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 514
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 515
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 516
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 517
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 518
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 519
    .local v2, value:Ljava/util/Date;
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 520
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "cancel"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v3, p0, Lti/modules/titanium/ui/PickerProxy$1;->val$callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync([Ljava/lang/Object;)V

    .line 524
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    .end local v2           #value:Ljava/util/Date;
    :cond_0
    return-void
.end method
