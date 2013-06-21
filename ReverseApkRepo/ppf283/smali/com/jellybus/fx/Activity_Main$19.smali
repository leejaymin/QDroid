.class Lcom/jellybus/fx/Activity_Main$19;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Main;->setSizePictureBitmap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$19;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1288
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jellybus/fx_sub/PictureController;->hasBitmap:Z

    .line 1289
    return-void
.end method
