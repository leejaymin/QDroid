.class final Lccc71/utils/phone/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    const-string v2, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received new GPS Status:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-static {}, Lccc71/utils/phone/a/b;->a()Lccc71/utils/phone/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccc71/utils/phone/a/b;->d(I)V

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-static {}, Lccc71/utils/phone/a/b;->a()Lccc71/utils/phone/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccc71/utils/phone/a/b;->d(I)V

    goto :goto_0

    .line 54
    :pswitch_2
    invoke-static {}, Lccc71/utils/phone/a/b;->b()Landroid/location/LocationManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_2

    .line 58
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " satellites"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_2
    invoke-static {}, Lccc71/utils/phone/a/b;->a()Lccc71/utils/phone/a/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccc71/utils/phone/a/b;->d(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 61
    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 63
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 74
    :pswitch_3
    invoke-static {}, Lccc71/utils/phone/a/b;->a()Lccc71/utils/phone/a/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccc71/utils/phone/a/b;->d(I)V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_2

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
