.class public Lcom/wolfram/android/alpha/PodStateButtonData;
.super Ljava/lang/Object;
.source "PodStateButtonData.java"


# instance fields
.field public ToggleView_OFF:Landroid/widget/ImageView;

.field public ToggleView_ON:Landroid/widget/ImageView;

.field public activityMeter:Landroid/view/View;

.field public podID:Ljava/lang/String;

.field public podTitle:Ljava/lang/String;

.field public positionInAdapter:I

.field public state:Lcom/wolfram/alpha/WAPodState;


# direct methods
.method public constructor <init>(Lcom/wolfram/alpha/WAPodState;ILjava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "state"
    .parameter "positionInAdapter"
    .parameter "podTitle"
    .parameter "podID"
    .parameter "activityMeter"
    .parameter "ToggleView_OFF"
    .parameter "ToggleView_ON"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wolfram/android/alpha/PodStateButtonData;->state:Lcom/wolfram/alpha/WAPodState;

    .line 30
    iput p2, p0, Lcom/wolfram/android/alpha/PodStateButtonData;->positionInAdapter:I

    .line 31
    iput-object p3, p0, Lcom/wolfram/android/alpha/PodStateButtonData;->podTitle:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/wolfram/android/alpha/PodStateButtonData;->podID:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/wolfram/android/alpha/PodStateButtonData;->activityMeter:Landroid/view/View;

    .line 34
    iput-object p6, p0, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_OFF:Landroid/widget/ImageView;

    .line 35
    iput-object p7, p0, Lcom/wolfram/android/alpha/PodStateButtonData;->ToggleView_ON:Landroid/widget/ImageView;

    .line 36
    return-void
.end method
