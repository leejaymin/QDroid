.class Lcom/ui/LapseIt/project/Renderer$2;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/Renderer;->buildOutOfMemoryDialog()V
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
    iput-object p1, p0, Lcom/ui/LapseIt/project/Renderer$2;->this$0:Lcom/ui/LapseIt/project/Renderer;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 460
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 461
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 463
    invoke-static {}, Lcom/ui/LapseIt/project/Renderer;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 464
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 465
    const-string v1, "Ok"

    iget-object v2, p0, Lcom/ui/LapseIt/project/Renderer$2;->this$0:Lcom/ui/LapseIt/project/Renderer;

    #getter for: Lcom/ui/LapseIt/project/Renderer;->onOutMemoryDialogHandler:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v2}, Lcom/ui/LapseIt/project/Renderer;->access$28(Lcom/ui/LapseIt/project/Renderer;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 467
    return-void
.end method
