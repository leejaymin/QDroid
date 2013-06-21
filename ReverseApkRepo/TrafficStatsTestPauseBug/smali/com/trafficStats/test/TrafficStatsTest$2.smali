.class Lcom/trafficStats/test/TrafficStatsTest$2;
.super Ljava/lang/Object;
.source "TrafficStatsTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/trafficStats/test/TrafficStatsTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/trafficStats/test/TrafficStatsTest;


# direct methods
.method constructor <init>(Lcom/trafficStats/test/TrafficStatsTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/trafficStats/test/TrafficStatsTest$2;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    const/4 v0, 0x0

    sput v0, Lcom/trafficStats/test/TrafficStatsTest;->THREAD_STATE:I

    .line 89
    return-void
.end method
