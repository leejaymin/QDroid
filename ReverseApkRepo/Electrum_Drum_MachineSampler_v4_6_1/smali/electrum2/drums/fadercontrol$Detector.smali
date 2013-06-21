.class Lelectrum2/drums/fadercontrol$Detector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "fadercontrol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/fadercontrol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Detector"
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/fadercontrol;


# direct methods
.method private constructor <init>(Lelectrum2/drums/fadercontrol;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lelectrum2/drums/fadercontrol$Detector;->this$0:Lelectrum2/drums/fadercontrol;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lelectrum2/drums/fadercontrol;Lelectrum2/drums/fadercontrol$Detector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lelectrum2/drums/fadercontrol$Detector;-><init>(Lelectrum2/drums/fadercontrol;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 269
    iget-object v0, p0, Lelectrum2/drums/fadercontrol$Detector;->this$0:Lelectrum2/drums/fadercontrol;

    const/high16 v1, 0x3f80

    iput v1, v0, Lelectrum2/drums/fadercontrol;->volumeval:F

    .line 270
    iget-object v0, p0, Lelectrum2/drums/fadercontrol$Detector;->this$0:Lelectrum2/drums/fadercontrol;

    invoke-virtual {v0}, Lelectrum2/drums/fadercontrol;->invalidate()V

    .line 273
    const/4 v0, 0x1

    return v0
.end method
