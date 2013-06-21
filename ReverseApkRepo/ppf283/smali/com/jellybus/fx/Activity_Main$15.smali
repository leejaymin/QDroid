.class Lcom/jellybus/fx/Activity_Main$15;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$15;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 688
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 689
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$15;->this$0:Lcom/jellybus/fx/Activity_Main;

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_Main;->finish()V

    .line 690
    return-void
.end method
