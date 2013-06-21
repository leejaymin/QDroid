.class Lcom/ui/LapseIt/project/InfoView$5;
.super Ljava/util/TimerTask;
.source "InfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/InfoView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/InfoView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/InfoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/InfoView$5;->this$0:Lcom/ui/LapseIt/project/InfoView;

    .line 216
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 219
    invoke-static {}, Lpl/polidea/imagemanager/ImageManager;->cleanUp()V

    .line 220
    return-void
.end method
