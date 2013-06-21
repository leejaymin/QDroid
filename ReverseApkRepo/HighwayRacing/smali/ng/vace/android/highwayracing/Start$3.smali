.class Lng/vace/android/highwayracing/Start$3;
.super Ljava/lang/Object;
.source "Start.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lng/vace/android/highwayracing/Start;->setupScoreButton()V
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
    .line 110
    iput-object p1, p0, Lng/vace/android/highwayracing/Start$3;->this$0:Lng/vace/android/highwayracing/Start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 112
    sget-object v0, Lng/vace/android/highwayracing/Start;->scoreNinjaAdapter:Lcom/scoreninja/adapter/ScoreNinjaAdapter;

    invoke-virtual {v0}, Lcom/scoreninja/adapter/ScoreNinjaAdapter;->show()V

    .line 113
    return-void
.end method
