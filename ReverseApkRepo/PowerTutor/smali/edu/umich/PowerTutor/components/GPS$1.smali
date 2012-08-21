.class Ledu/umich/PowerTutor/components/GPS$1;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/components/GPS;-><init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/components/GPS;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/components/GPS;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/components/GPS$1;->this$0:Ledu/umich/PowerTutor/components/GPS;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 177
    if-ne p1, v2, :cond_1

    .line 178
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS$1;->this$0:Ledu/umich/PowerTutor/components/GPS;

    #getter for: Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    invoke-static {v0}, Ledu/umich/PowerTutor/components/GPS;->access$0(Ledu/umich/PowerTutor/components/GPS;)Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->updateEvent(II)V

    .line 184
    :cond_0
    :goto_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/GPS$1;->this$0:Ledu/umich/PowerTutor/components/GPS;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS$1;->this$0:Ledu/umich/PowerTutor/components/GPS;

    iget-object v2, p0, Ledu/umich/PowerTutor/components/GPS$1;->this$0:Ledu/umich/PowerTutor/components/GPS;

    #getter for: Ledu/umich/PowerTutor/components/GPS;->locationManager:Landroid/location/LocationManager;
    invoke-static {v2}, Ledu/umich/PowerTutor/components/GPS;->access$1(Ledu/umich/PowerTutor/components/GPS;)Landroid/location/LocationManager;

    move-result-object v2

    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS$1;->this$0:Ledu/umich/PowerTutor/components/GPS;

    #getter for: Ledu/umich/PowerTutor/components/GPS;->lastStatus:Landroid/location/GpsStatus;
    invoke-static {v3}, Ledu/umich/PowerTutor/components/GPS;->access$2(Ledu/umich/PowerTutor/components/GPS;)Landroid/location/GpsStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    #setter for: Ledu/umich/PowerTutor/components/GPS;->lastStatus:Landroid/location/GpsStatus;
    invoke-static {v0, v2}, Ledu/umich/PowerTutor/components/GPS;->access$3(Ledu/umich/PowerTutor/components/GPS;Landroid/location/GpsStatus;)V

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    return-void

    .line 180
    :cond_1
    if-ne p1, v1, :cond_0

    .line 181
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS$1;->this$0:Ledu/umich/PowerTutor/components/GPS;

    #getter for: Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    invoke-static {v0}, Ledu/umich/PowerTutor/components/GPS;->access$0(Ledu/umich/PowerTutor/components/GPS;)Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->updateEvent(II)V

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
