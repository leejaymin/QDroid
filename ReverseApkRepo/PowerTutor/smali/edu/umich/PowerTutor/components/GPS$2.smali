.class Ledu/umich/PowerTutor/components/GPS$2;
.super Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;
.source "GPS.java"


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
    iput-object p1, p0, Ledu/umich/PowerTutor/components/GPS$2;->this$0:Ledu/umich/PowerTutor/components/GPS;

    .line 195
    invoke-direct {p0}, Ledu/umich/PowerTutor/util/NotificationService$DefaultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public noteStartGps(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 211
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS$2;->this$0:Ledu/umich/PowerTutor/components/GPS;

    const/4 v1, 0x1

    const/4 v2, 0x4

    #calls: Ledu/umich/PowerTutor/components/GPS;->updateUidEvent(III)V
    invoke-static {v0, p1, v1, v2}, Ledu/umich/PowerTutor/components/GPS;->access$4(Ledu/umich/PowerTutor/components/GPS;III)V

    .line 212
    return-void
.end method

.method public noteStartWakelock(ILjava/lang/String;I)V
    .locals 3
    .parameter "uid"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 197
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 198
    const-string v0, "GpsLocationProvider"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS$2;->this$0:Ledu/umich/PowerTutor/components/GPS;

    #getter for: Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    invoke-static {v0}, Ledu/umich/PowerTutor/components/GPS;->access$0(Ledu/umich/PowerTutor/components/GPS;)Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->updateEvent(II)V

    .line 201
    :cond_0
    return-void
.end method

.method public noteStopGps(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 215
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS$2;->this$0:Ledu/umich/PowerTutor/components/GPS;

    const/4 v1, 0x2

    const/4 v2, 0x4

    #calls: Ledu/umich/PowerTutor/components/GPS;->updateUidEvent(III)V
    invoke-static {v0, p1, v1, v2}, Ledu/umich/PowerTutor/components/GPS;->access$4(Ledu/umich/PowerTutor/components/GPS;III)V

    .line 216
    return-void
.end method

.method public noteStopWakelock(ILjava/lang/String;I)V
    .locals 2
    .parameter "uid"
    .parameter "name"
    .parameter "type"

    .prologue
    const/4 v1, 0x4

    .line 204
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 205
    const-string v0, "GpsLocationProvider"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Ledu/umich/PowerTutor/components/GPS$2;->this$0:Ledu/umich/PowerTutor/components/GPS;

    #getter for: Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    invoke-static {v0}, Ledu/umich/PowerTutor/components/GPS;->access$0(Ledu/umich/PowerTutor/components/GPS;)Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->updateEvent(II)V

    .line 208
    :cond_0
    return-void
.end method
