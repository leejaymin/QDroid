.class public Lcom/wolfram/android/alpha/SubpodStateButtonData;
.super Ljava/lang/Object;
.source "SubpodStateButtonData.java"


# instance fields
.field public SubpodTitle:Ljava/lang/String;

.field public podTitle:Ljava/lang/String;

.field public state:Lcom/wolfram/alpha/WASubpodState;


# direct methods
.method public constructor <init>(Lcom/wolfram/alpha/WASubpodState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "SubpodTitle"
    .parameter "podTitle"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/wolfram/android/alpha/SubpodStateButtonData;->state:Lcom/wolfram/alpha/WASubpodState;

    .line 15
    iput-object p2, p0, Lcom/wolfram/android/alpha/SubpodStateButtonData;->SubpodTitle:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/wolfram/android/alpha/SubpodStateButtonData;->podTitle:Ljava/lang/String;

    .line 18
    return-void
.end method
