.class Lcom/ui/LapseIt/project/ProjectPreview$1;
.super Ljava/lang/Object;
.source "ProjectPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/ProjectPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ui/LapseIt/project/ProjectControls;->toggleButtonStatus(Z)V

    .line 182
    return-void
.end method
