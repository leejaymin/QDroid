.class Lcom/trafficStats/test/TrafficStatsTest$1;
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
    iput-object p1, p0, Lcom/trafficStats/test/TrafficStatsTest$1;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 80
    const/4 v0, 0x1

    sput v0, Lcom/trafficStats/test/TrafficStatsTest;->THREAD_STATE:I

    .line 81
    iget-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest$1;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    new-instance v1, Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;

    iget-object v2, p0, Lcom/trafficStats/test/TrafficStatsTest$1;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    invoke-direct {v1, v2}, Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;-><init>(Lcom/trafficStats/test/TrafficStatsTest;)V

    iput-object v1, v0, Lcom/trafficStats/test/TrafficStatsTest;->socketTest:Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;

    .line 82
    iget-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest$1;->this$0:Lcom/trafficStats/test/TrafficStatsTest;

    iget-object v0, v0, Lcom/trafficStats/test/TrafficStatsTest;->socketTest:Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;

    invoke-virtual {v0}, Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;->start()V

    .line 83
    return-void
.end method
