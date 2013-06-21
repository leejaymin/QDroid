.class Lvn/esse/bodysymbol/Preview$2;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/Preview;->switchCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/Preview;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/Preview$2;->this$0:Lvn/esse/bodysymbol/Preview;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "arg1"

    .prologue
    .line 218
    iget-object v0, p0, Lvn/esse/bodysymbol/Preview$2;->this$0:Lvn/esse/bodysymbol/Preview;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lvn/esse/bodysymbol/Preview;->previewing:Z

    .line 219
    iget-object v0, p0, Lvn/esse/bodysymbol/Preview$2;->this$0:Lvn/esse/bodysymbol/Preview;

    invoke-virtual {v0}, Lvn/esse/bodysymbol/Preview;->invalidate()V

    .line 220
    return-void
.end method
