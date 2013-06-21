.class Lcom/jellybus/fx/Activity_Border_Stamp$9;
.super Ljava/lang/Object;
.source "Activity_Border_Stamp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Border_Stamp;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$9;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 368
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 369
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$9;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->goBack()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$20(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    .line 370
    return-void
.end method
