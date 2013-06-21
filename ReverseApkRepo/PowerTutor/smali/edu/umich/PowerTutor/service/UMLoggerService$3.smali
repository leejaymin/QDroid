.class Ledu/umich/PowerTutor/service/UMLoggerService$3;
.super Landroid/telephony/PhoneStateListener;
.source "UMLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/service/UMLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/service/UMLoggerService;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/service/UMLoggerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    .line 324
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 360
    packed-switch p1, :pswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 362
    :pswitch_0
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-call idle\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-call off-hook\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-call ringing\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 374
    packed-switch p1, :pswitch_data_0

    .line 388
    :goto_0
    return-void

    .line 376
    :pswitch_0
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "data disconnected\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "data connecting\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "data connected\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :pswitch_3
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "data suspended\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    return-void

    .line 328
    :pswitch_0
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-service emergency-only\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_1
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-service in-service\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->phoneManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$1(Ledu/umich/PowerTutor/service/UMLoggerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 346
    :pswitch_2
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone-network "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->phoneManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$1(Ledu/umich/PowerTutor/service/UMLoggerService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :pswitch_3
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-network edge\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_4
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-network GPRS\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :pswitch_5
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-network HSDPA\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :pswitch_6
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-network UMTS\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :pswitch_7
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-service out-of-service\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :pswitch_8
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    const-string v1, "phone-service power-off\n"

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 332
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public onSignalStrengthChanged(I)V
    .locals 3
    .parameter "asu"

    .prologue
    .line 391
    iget-object v0, p0, Ledu/umich/PowerTutor/service/UMLoggerService$3;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v0}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 392
    return-void
.end method
