.class Lng/vace/android/highwayracing/Start$6;
.super Ljava/lang/Object;
.source "Start.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lng/vace/android/highwayracing/Start;->setupVibrationButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lng/vace/android/highwayracing/Start;


# direct methods
.method constructor <init>(Lng/vace/android/highwayracing/Start;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lng/vace/android/highwayracing/Start$6;->this$0:Lng/vace/android/highwayracing/Start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 145
    iget-object v0, p0, Lng/vace/android/highwayracing/Start$6;->this$0:Lng/vace/android/highwayracing/Start;

    iget-object v0, v0, Lng/vace/android/highwayracing/Start;->config:Lng/vace/android/highwayracing/GameSettings;

    sget-object v1, Lng/vace/android/highwayracing/Start;->vibrationButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lng/vace/android/highwayracing/GameSettings;->setVibrate(Z)V

    .line 146
    return-void
.end method
