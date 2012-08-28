.class Lvn/esse/bodysymbol/HomeActivity$5;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lnet/londatiga/android/QuickAction$OnActionItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvn/esse/bodysymbol/HomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvn/esse/bodysymbol/HomeActivity;


# direct methods
.method constructor <init>(Lvn/esse/bodysymbol/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lvn/esse/bodysymbol/HomeActivity$5;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lnet/londatiga/android/QuickAction;II)V
    .locals 2
    .parameter "source"
    .parameter "pos"
    .parameter "actionId"

    .prologue
    .line 271
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$5;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$5;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-object v0, v0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 276
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$5;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-object v0, v0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    .line 277
    add-int/lit8 v1, p3, -0x1

    mul-int/lit8 v1, v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 278
    iget-object v0, p0, Lvn/esse/bodysymbol/HomeActivity$5;->this$0:Lvn/esse/bodysymbol/HomeActivity;

    iget-object v0, v0, Lvn/esse/bodysymbol/HomeActivity;->cameraPreview:Lvn/esse/bodysymbol/Preview;

    iget-object v0, v0, Lvn/esse/bodysymbol/Preview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0
.end method
