.class Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;
.super Ljava/lang/Object;
.source "Cocos2dxAccelerometer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

.field final synthetic val$timestamp:J

.field final synthetic val$x_:F

.field final synthetic val$y_:F

.field final synthetic val$z_:F


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxAccelerometer;FFFJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->val$x_:F

    iput p3, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->val$y_:F

    iput p4, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->val$z_:F

    iput-wide p5, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 109
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->val$x_:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->val$y_:F

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->val$z_:F

    iget-wide v3, p0, Lorg/cocos2dx/lib/Cocos2dxAccelerometer$1;->val$timestamp:J

    #calls: Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->onSensorChanged(FFFJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->access$000(FFFJ)V

    .line 110
    return-void
.end method
