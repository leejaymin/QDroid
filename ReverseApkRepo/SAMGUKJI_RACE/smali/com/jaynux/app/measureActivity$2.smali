.class Lcom/jaynux/app/measureActivity$2;
.super Ljava/lang/Object;
.source "measureActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/measureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/measureActivity;


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 265
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 270
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    monitor-exit p0

    .line 327
    return-void

    .line 275
    :pswitch_0
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    iget v0, v0, Lcom/jaynux/app/measureActivity;->mStatus:I

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$10(Lcom/jaynux/app/measureActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jaynux/app/measureActivity;->mTime:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$11(Lcom/jaynux/app/measureActivity;I)V

    .line 279
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 280
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 281
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 290
    :goto_1
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$14(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v3}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$7(Lcom/jaynux/app/measureActivity;I)V

    .line 291
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$14(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v3}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$7(Lcom/jaynux/app/measureActivity;I)V

    .line 294
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$14(Lcom/jaynux/app/measureActivity;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mNum:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$15(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/jaynux/app/measureActivity;->mNum:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$0(Lcom/jaynux/app/measureActivity;I)V

    .line 298
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mValueText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$16(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mNum:I
    invoke-static {v4}, Lcom/jaynux/app/measureActivity;->access$15(Lcom/jaynux/app/measureActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$7(Lcom/jaynux/app/measureActivity;I)V

    goto/16 :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 285
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jaynux/app/measureActivity;->mTime:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$11(Lcom/jaynux/app/measureActivity;I)V

    .line 286
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 287
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 288
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    goto/16 :goto_1

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    iget v0, v0, Lcom/jaynux/app/measureActivity;->mStatus:I

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$10(Lcom/jaynux/app/measureActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$10(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/jaynux/app/measureActivity;->mTime:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$11(Lcom/jaynux/app/measureActivity;I)V

    .line 307
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 308
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 309
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 319
    :goto_2
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$14(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v3}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$7(Lcom/jaynux/app/measureActivity;I)V

    .line 320
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$14(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mBeforValue:[I
    invoke-static {v2}, Lcom/jaynux/app/measureActivity;->access$12(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v3}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$7(Lcom/jaynux/app/measureActivity;I)V

    .line 322
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mValueText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$16(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v4}, Lcom/jaynux/app/measureActivity;->access$14(Lcom/jaynux/app/measureActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jaynux/app/measureActivity;->mTime:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$11(Lcom/jaynux/app/measureActivity;I)V

    .line 314
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 315
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 316
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$2;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAfterValue:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$13(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
