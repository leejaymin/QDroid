.class Lcom/ui/LapseIt/project/Renderer$1;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/Renderer;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/Renderer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer$1;->this$0:Lcom/ui/LapseIt/project/Renderer;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 440
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 441
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lui/utils/OrientationUtils;->unlockScreen(Landroid/app/Activity;)V

    .line 442
    return-void
.end method
